const db = require("../data/db.config.js");

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
};

// Resolves to an array of users
function find() {
  return db.select("*").from("schemes");
}

// Resolves to an array with single user or null if id is invalid
function findById(id) {
  return db("schemes")
    .where({ id })
    .first();
}

function findSteps(id) {
  return db("steps")
    .where({ id })
    .first();
}

function add(newScheme) {
  return db("schemes").insert(newScheme);
}

function update(updatedScheme, id) {
  return db("schemes")
    .where({ id })
    .update(updatedScheme);
}

function remove(id) {
  return db("schemes")
    .where({ id })
    .del();
}
