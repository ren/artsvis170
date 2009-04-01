require 'ruby-processing'

class Sketch < Processing::App
  load_library :opengl
  BOUNDS = 6
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
    fill(71,145,25,30)
    
    radius = 200;
    
    30.times {
      angle = radians(rand(360))
      x = 500 + (cos(angle) * radius)
      y = 300 + (sin(angle) * radius)
      
      puts "x: #{x}, y: #{y}"
      
      ellipse(x, y, DIAMETER, DIAMETER)
    }
    
    # 10.times { ellipse(rand(WIDTH), rand(HEIGHT), DIAMETER, DIAMETER) }
    # ellipse(500, 250, DIAMETER, DIAMETER)
    # ellipse(625, 375, DIAMETER, DIAMETER)
    # ellipse(750, 500, DIAMETER, DIAMETER)
    # ellipse(625, 625, DIAMETER, DIAMETER)
    # ellipse(500, 750, DIAMETER, DIAMETER)
    # ellipse(375, 625, DIAMETER, DIAMETER)
    # ellipse(250, 500, DIAMETER, DIAMETER)
    # ellipse(375, 375, DIAMETER, DIAMETER)
  end

  def draw    
    place_dots(30)
    
    if (frameCount % 10) == 0
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
         diameter = rand(4*DIAMETER)
         fill((rand(0)*100)-30,rand(0)*100,(rand(0)*300)-45,rand(70))
         ellipse(x, y, diameter, diameter)
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