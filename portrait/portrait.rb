require 'ruby-processing'

class Sketch < Processing::App
BOUNDS = 60

  def setup
    # color_mode HSB, 360, 100, 100
    frame_rate 24
    # background 223, 39, 95
    background 255, 255, 255
    smooth

    ellipseMode(CENTER)
    noStroke
    fill(71,145,255,30)
    3.times { ellipse(rand(1000), rand(600), BOUNDS/4, BOUNDS/4) }
  end

  def draw    
    x = rand(1000)
    y = rand(600)
    

    startX = x-BOUNDS
    startY = y-BOUNDS
    
    @testBox = get(startX, startY, BOUNDS, BOUNDS);

    @testBox.pixels.each do |i|
      if i != -1
        fill(71,145,255,30)
        ellipse(x, y, BOUNDS/4, BOUNDS/4)
        break
      end
    end
    
    saveFrame
  end
  
  def grid(obj, yLines, xLines, lineWidth, opacity)
    noStroke
    height = obj.height
    fill(360, opacity)
    yLines.times { |i| rect(0, i*(height/yLines), obj.width, lineWidth) }
    xLines.times { |i| rect(i*(height/xLines), 0, lineWidth, obj.height) }
  end
end

Sketch.new(:width => 1000, :height => 600, :title => "Ren: Self Portrait")