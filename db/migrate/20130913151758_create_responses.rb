class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :case_num
      t.text :language
      t.integer :zip
      t.text :neighborhood
      t.integer :sex
      t.integer :age
      t.integer :race_ethnicity
      t.integer :education
      t.string :grade
      t.string :integer
      t.text :q1a
      t.integer :q1acode1
      t.integer :q1acode2
      t.integer :q1acode3
      t.text :q1b
      t.integer :q1bcode1
      t.integer :q1bcode2
      t.integer :q1bcode3
      t.text :q1c
      t.integer :q1ccode1
      t.integer :q1ccode2
      t.integer :q1ccode3
      t.text :q1d
      t.integer :q1dcode1
      t.integer :q1dcode2
      t.integer :q1dcode3
      t.text :q1e
      t.integer :q1ecode1
      t.integer :q1ecode2
      t.integer :q1ecode3
      t.text :q2a
      t.integer :q2acode1
      t.integer :q2acode2
      t.integer :q2acode3
      t.text :q2b
      t.integer :q2bcode1
      t.integer :q2bcode2
      t.integer :q2bcode3
      t.text :q2c
      t.integer :q2ccode1
      t.integer :q2ccode2
      t.integer :q2ccode3
      t.text :q2d
      t.integer :q2dcode1
      t.integer :q2dcode2
      t.integer :q2dcode3
      t.text :q2e
      t.integer :q2ecode1
      t.integer :q2ecode2
      t.integer :q2ecode3
      t.text :q3a
      t.integer :q3acode1
      t.integer :q3acode2
      t.integer :q3acode3
      t.text :q3b
      t.integer :q3bcode1
      t.integer :q3bcode2
      t.integer :q3bcode3
      t.text :q3c
      t.integer :q3ccode1
      t.integer :q3ccode2
      t.integer :q3ccode3
      t.text :q3d
      t.integer :q3dcode1
      t.integer :q3dcode2
      t.integer :q3dcode3
      t.text :q3e
      t.integer :q3ecode1
      t.integer :q3ecode2
      t.integer :q3ecode3
      t.text :q4a
      t.integer :q4acode1
      t.integer :q4acode2
      t.integer :q4acode3
      t.text :q4b
      t.integer :q4bcode1
      t.integer :q4bcode2
      t.integer :q4bcode3
      t.text :q4c
      t.integer :q4ccode1
      t.integer :q4ccode2
      t.integer :q4ccode3
      t.text :q4d
      t.integer :q4dcode1
      t.integer :q4dcode2
      t.integer :q4dcode3
      t.text :q4e
      t.integer :q4ecode1
      t.integer :q4ecode2
      t.integer :q4ecode3
      t.boolean :filter

      t.timestamps
    end

  end
  
end