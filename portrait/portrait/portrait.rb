require 'ruby-processing'

class Sketch < Processing::App
  load_library :opengl
  BOUNDS = 10
  DIAMETER = 4
  
  WIDTH = 1000
  HEIGHT = 600

  def setup
    library_loaded?(:opengl) ? render_mode(OPENGL) : render_mode(P3D)

    # color_mode HSB, 360, 100, 100
    # frame_rate 30
    # background 223, 39, 95
    background 255, 255, 255
    smooth

    ellipseMode(CENTER)
    noStroke
    fill(71,145,255,30)
    10.times { ellipse(rand(WIDTH), rand(HEIGHT), DIAMETER, DIAMETER) }
  end

  def draw    
    place_dots(40)
    
    if (frameCount % 30) == 0
      saveFrame("portrait-####.png")
    end
  end
 
 def place_dots(amount)
   amount.times do
     x = rand(WIDTH)
     y = rand(HEIGHT)
   

     startX = x-BOUNDS
     startY = y-BOUNDS
   
     @testBox = get(startX, startY, BOUNDS, BOUNDS);

     @testBox.pixels.each do |i|
       if i != -1
         fill(71,145,255,30)
         ellipse(x, y, DIAMETER, DIAMETER)
         break
       end
     end
    end
 end
  
  # def grid(obj, yLines, xLines, lineWidth, opacity)
  #   noStroke
  #   height = obj.height
  #   fill(360, opacity)
  #   yLines.times { |i| rect(0, i*(height/yLines), obj.width, lineWidth) }
  #   xLines.times { |i| rect(i*(height/xLines), 0, lineWidth, obj.height) }
  # end
end

# FullScreen.new(:full_screen => true, :title => "Full Screen", :width => HEIGHT, :height => HEIGHT)
Sketch.new(:width => 1000, :height => 600, :title => "Ren: Self Portrait")