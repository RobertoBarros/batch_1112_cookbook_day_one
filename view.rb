class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - Name: #{recipe.name}: Description: #{recipe.description}"
    end
  end

  def ask_name
    puts "Enter recipe name:"
    gets.chomp
  end

  def ask_description
    puts "Enter recipe description:"
    gets.chomp
  end

  def ask_index
    puts "Enter index:"
    gets.chomp.to_i - 1
  end

  def show_removed_recipe(recipe_name)
    puts "#{recipe_name} removed!"
  end
end
