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

ActiveRecord::Schema.define(version: 20161007005853) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "oab",        limit: 255
    t.string   "cpf",        limit: 255
    t.string   "email",      limit: 255
    t.string   "telefone",   limit: 255
    t.string   "endereco",   limit: 255
    t.string   "cidade",     limit: 255
    t.string   "uf",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "correspondentes", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "cpf",        limit: 255
    t.string   "telefone",   limit: 255
    t.string   "email",      limit: 255
    t.string   "cidade",     limit: 255
    t.string   "uf",         limit: 255
    t.text     "observacao", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "diligences", force: :cascade do |t|
    t.string   "titulo",      limit: 255
    t.text     "corpo",       limit: 65535
    t.string   "status",      limit: 255
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
