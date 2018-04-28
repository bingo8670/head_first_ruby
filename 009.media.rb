# 媒体共享应用
# mixin : 通过建立模块，将该模块导入需要的方法中；
# 尽管类只能继承一个超类，但允许把任意多个模块混合到一个类中。

module AcceptsComments
  def comments
    #if @comments
    #  @comments
    #else
    #  @comments = []
    #end
    # 五行等于下面一行，ruby的高效
    @comments = @comments || []
  end
  def add_comment(comment)
    comments << comment
    # 将comment 添加到数组comments 中
  end
end

# 超类
class Clip
  def play
    puts "Playing #{object_id}..."
    # 现实正在播放的对象的ID
  end
end

# 子类
class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

# 子类
class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

# 独立类
class Photo
  include AcceptsComments
  def show
    puts "Displaying #{object_id}..."
  end
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat.")
photo = Photo.new
photo.add_comment("Beautiful colors.")

p video.comments, song.comments, photo.comments
photo.show


