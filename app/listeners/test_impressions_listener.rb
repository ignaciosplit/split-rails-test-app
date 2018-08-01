class TestImpressionListener
  def log(impression)
     Logger.new($stdout).info(impression)
  end
end
