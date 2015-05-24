# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150522190326) do

  create_table "alumno_clases", force: :cascade do |t|
    t.string "alumno_matricula"
    t.string "materia_clave"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "matricula"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "password_digest"
  end

  create_table "clases", force: :cascade do |t|
    t.string "clave"
    t.string "nombre"
  end

  create_table "lecturas", force: :cascade do |t|
    t.string "titulo"
    t.string "tema"
    t.string "matricula"
    t.string "materia_clave"
  end

  create_table "profesor_alumnos", force: :cascade do |t|
    t.string "alumno_matricula"
    t.string "profesor_matricula"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "matricula"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "materia_clave"
    t.string "password_digest"
  end

end
