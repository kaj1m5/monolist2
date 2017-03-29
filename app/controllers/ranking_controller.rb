class RankingController < ApplicationController

  def have
    @items = Item.select("id", "title", "large_image").joins(:haves).group('items.id').order('count(items.id) desc').limit(10)
  end

  def want
    @items = Item.select("id", "title", "large_image").joins(:wants).group('items.id').order('count(items.id) desc').limit(10)
  end

end
