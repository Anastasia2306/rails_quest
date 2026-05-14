class AddIndexesAndConstraints < ActiveRecord::Migration[8.1]
  def change
    # Уникальный индекс на codename в agents
    add_index :agents, :codename, unique: true
    
    # Уникальный индекс на name в skills
    add_index :skills, :name, unique: true
    
    # Внешний ключ для missions
    add_foreign_key :missions, :agents
    
    # Составной уникальный индекс для agent_skills
    add_index :agent_skills, [:agent_id, :skill_id], unique: true
  end
end
