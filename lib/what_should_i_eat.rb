# frozen_string_literal: true

require_relative "what_should_i_eat/printing"
require "http"
require "JSON"

module WhatShouldIEat
  
  
  result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
  recipes = JSON.parse(result)
  name = recipes.first['items'].first['label']
  url  = recipes.first['items'].first['url']
  Printing.print name, url
  end


