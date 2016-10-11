defmodule Classlab.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string, null: false
      add :access_token, :string
      add :access_token_expired_at, :datetime
      timestamps()
    end

    create unique_index(:users, [:email])
    create unique_index(:users, [:access_token])
  end
end
