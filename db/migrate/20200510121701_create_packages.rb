class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :pkgname
      t.string :pkgbase
      t.string :repo
      t.string :arch
      t.integer :pkgver
      t.integer :pkgrel
      t.integer :epoch
      t.text :pkgdesc
      t.string :url
      t.string :filename
      t.integer :compressed_size
      t.integer :installed_size
      t.date :build_date
      t.date :last_update
      t.date :flag_date
      t.string :packager

      t.timestamps
    end
  end
end
