class StringCalculator
  def self.add(args)
    negatives = args.scan(/-[\d]?/)
    raise StandardError, "negatives not allowed: [#{negatives.join(',')}]" if negatives.size > 0

    delimiter = ","
    delimiter = args.match(/^\/\/(.)/)[1] if args.match(/^\/\//)

    raise StandardError, "last number is missing" if args =~ /#{delimiter}\n$/

    total = 0
    input = args.split(/[#{delimiter}\n]/)
    input.collect{|n| total += n.to_i}
    total
  end
end
