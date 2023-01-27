require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Pegar as receitas do cookbook
    recipes = @cookbook.all

    # 2. Mandar a view exibir as receitas
    @view.display_list(recipes)
  end

  def add
    # 1. Perguntar qual o nome da receita
    name = @view.ask_name

    # 2. Perguntar qual a descriçao da receita
    description = @view.ask_description

    # 3. Instanciar uma nova receita
    new_recipe = Recipe.new(name, description)

    # 4. Criar a receita no cookbook
    @cookbook.create(new_recipe)

  end

  def remove
    # 1. Listar as receitas
    list

    # 2. Perguntar o index da receita que quer remover
    index = @view.ask_index

    # 2.5 Mostrar o nome da receita removida
    recipe_name = @cookbook.all[index].name
    @view.show_removed_recipe(recipe_name)


    # 3. Mandar o cookbook remover pelo index
    @cookbook.destroy(index)
  end
end
