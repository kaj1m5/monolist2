class RankingController < ApplicationController

  def have
    @items = Item.joins(:haves).group('item_id').order('count(item_id) desc').limit(10)
  end

  def want
    @items = Item.joins(:wants).group('item_id').order('count(item_id) desc').limit(10)
  end

end
