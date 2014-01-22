class StringCalculator
  def self.add(args)
    raise StandardError, "input cannot end with a newline" if args =~ /\n$/

    negatives = args.scan(/-[\d]?/)
    raise StandardError, "negatives not allowed: [#{negatives.join(',')}]" if negatives.size > 0

    if args.match(/^\/\//)
       delimiter = args.match(/^\/\/(.)/)[1]
    else
      delimiter = ","
    end  

    total = 0
    input = args.split(/[#{delimiter}\n]/)
    input.collect{|n| total += n.to_i}
    total
  end
end
