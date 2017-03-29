class RankingController < ApplicationController

  def have
    @items = Item.select("id", "title", "large_image").joins(:haves).group('item_id').order('count(item_id) desc').limit(10)
  end

  def want
    @items = Item.select("id", "title", "large_image").joins(:wants).group('item_id').order('count(item_id) desc').limit(10)
  end

end
