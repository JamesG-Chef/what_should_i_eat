# frozen_string_literal: true

require_relative "what_should_i_eat/version"

module WhatShouldIEat
  class Error < StandardError; end
  
  require "http"
  result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s

  recipes = JSON.parse(result)

  puts "For tonight's dinner we shall have #{recipes.first['items'].first['label']}"
  puts "Find the recipe at #{recipes.first['items'].first['url']}"



end
