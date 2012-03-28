class FirstSetup < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :roles do |t|
      t.string :name
      t.text   :description

      t.timestamps
    end

    create_table :users_roles do |t|
      t.references :users
      t.references :roles
    end
  end

end
