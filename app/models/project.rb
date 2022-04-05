class Project < ApplicationRecord
    has_many :todos, foreign_key: "project_id"
end
