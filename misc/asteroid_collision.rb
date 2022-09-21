# frozen_string_literal: true

# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  remaining_asteroids = []
  asteroids.each do |asteroid|
    if remaining_asteroids.empty?
      remaining_asteroids << asteroid
    else
      collide(remaining_asteroids, asteroid)
    end
  end
  remaining_asteroids
end

def collide(remaining, asteroid)
  loop do
    last = remaining.last
    if remaining.empty? || !(last.positive? && asteroid.negative?)
      remaining << asteroid
      break
    elsif last.abs == asteroid.abs
      remaining.pop
      break
    elsif last.abs > asteroid.abs
      break
    else
      remaining.pop
    end
  end
end
