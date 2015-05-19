defmodule DivingIntoEcto.Repo.Migrations.AddFishLandedTable do
  use Ecto.Migration

  def change do
    create table(:fish_landed) do
      add :date,            :datetime
      add :weight,          :decimal
      add :length,          :integer
      add :person_id,       references(:people)
      add :fish_species_id, references(:fish_species)
      add :fly_type_id,     references(:fly_types)
      add :location_id,     references(:trips)

      timestamps
    end
  end
end
