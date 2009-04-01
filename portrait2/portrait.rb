require 'ruby-processing'

class Sketch < Processing::App
  attr_accessor :dots, :ring_radius, :state, :cycle, :cycle_length

  def setup
    @dots = []
    @ring_radius = 200
    @cycle = 0
    @cycle_length = 20

    frame_rate(40)

    reset_all

    300.times {
      @dots.push(Dot.new)
    }
  end
  
  def reset_all
    background(255)
    smooth
    ellipseMode(CENTER)
    noStroke
  end

  def draw
    fill(255,255,255)
    rect(0,0, width, height)

    @cycle = frameCount % @cycle_length

    if ((@cycle >= 0) && (@cycle <= 4))
      10.times {
        @dots.shift
      }
      @dots.each do |dot|
        dot.draw_dot
      end
      10.times {
        @dots.push(Dot.new)
      }
    end
    
    if ((@cycle > 4) && (@cycle < 19))
      @dots.each do |dot|
        dot.draw_dot
      end
    end
    
    if (@cycle == 19)
      @cycle = 19
      @dots.each do |dot|
        dot.draw_dot
      end
      delay(1000)
    end

    # if (frameCount % 10) == 0
    #   saveFrame("portrait-####.png")
    # end
  end

end

class Dot
  include Math
  attr_accessor :app,
                :x, :y, :angle,
                :red, :green, :blue, :alpha,
                :diameter,
                :velocity,
                :life_stage, :testBox
  
  def initialize
    @app = Processing::App.current

    @angle = @app.radians(rand(360))
    @offsetX = (rand(@app.ring_radius / 10))
    @offsetY = (rand(@app.ring_radius / 10))

    @red = (rand(0)*100)-30
    @blue = rand(0)*100
    @green = (rand(0)*300)-45
    @alpha = rand(40)+50

    @diameter = rand(10)+4 # => 8, 4
    @velocity = (17.0 - @diameter) / 10 # => .3, .7

    self.draw_dot
  end
  
  def test_for_placement
    @x = (@app.width / 2) + @offsetX + (cos(@angle) * @app.ring_radius)
    @y = (@app.height / 2) + @offsetY + (sin(@angle) * @app.ring_radius)

    @testBox = @app.get(@x-6, @y-6, 6, 6);

    @testBox.pixels.each do |i|
      # puts "#{i}"
      if i != -1
        return true
      else
        return false
      end
    end
  end
  
  def draw_dot
    # @x = (@app.width / 2) + @offsetX + (cos(@angle) * @app.ring_radius)
    # @y = (@app.height / 2) + @offsetY + (sin(@angle) * @app.ring_radius)
    
    # if @app.cycle < 60
    #   @x = (@app.width / 2) + @offsetX + (cos(@angle) * (@app.ring_radius + (@app.cycle * @velocity)))
    #   @y = (@app.height / 2) + @offsetY + (sin(@angle) * (@app.ring_radius + (@app.cycle * @velocity)))
    # else
    #   @x = (@app.width / 2) + @offsetX + (cos(@angle) * (@app.ring_radius + ((@app.cycle_length - @app.cycle) * @velocity)))
    #   @y = (@app.height / 2) + @offsetY + (sin(@angle) * (@app.ring_radius + ((@app.cycle_length - @app.cycle) * @velocity)))
    # end
    
    if @app.cycle <= 4
      @x = (@app.width / 2) + @offsetX + (cos(@angle) * (@app.ring_radius + (@app.cycle * (@velocity * 4))))
      @y = (@app.height / 2) + @offsetY + (sin(@angle) * (@app.ring_radius + (@app.cycle * (@velocity * 4))))
    else
      @x = (@app.width / 2) + @offsetX + (cos(@angle) * (@app.ring_radius + ((@app.cycle_length - @app.cycle) * (@velocity * 4))))
      @y = (@app.height / 2) + @offsetY + (sin(@angle) * (@app.ring_radius + ((@app.cycle_length - @app.cycle) * (@velocity * 4))))
    end

    @app.fill(@red, @blue, @green, @alpha)    
    @app.ellipse(@x, @y, @diameter, @diameter)
  end
end

Sketch.new :width => 1000, :height => 600, :title => "Portrait 2", :full_screen => false