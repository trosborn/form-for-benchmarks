require 'benchmark/ips'

Benchmark.ips do |x|
  x.report("Master: array.length == 1") {
    record = [:document]

    object = record.is_a?(Array) ? record.last : record
    raise ArgumentError, "First argument in form cannot contain nil or be empty" unless object
  }

  x.report("PR: array.length == 1") {
    record = [:document]

    record_is_array = record.is_a?(Array)
    object = record_is_array ? record.last : record

    if record_is_array && record.any?(&:nil?) || object.nil?
      raise ArgumentError, "First argument in form cannot contain nil or be empty"
    end
  }
  x.compare!
end

Benchmark.ips do |x|
  x.report("Master: array.length == 2") {
    record = [:document, :comment]

    object = record.is_a?(Array) ? record.last : record
    raise ArgumentError, "First argument in form cannot contain nil or be empty" unless object
  }

  x.report("PR: array.length == 2") {
    record = [:document, :comment]

    record_is_array = record.is_a?(Array)
    object = record_is_array ? record.last : record

    if record_is_array && record.any?(&:nil?) || object.nil?
      raise ArgumentError, "First argument in form cannot contain nil or be empty"
    end
  }
  x.compare!
end

Benchmark.ips do |x|
  x.report("Master: array.length == 3") {
    record = [:admin, :document, :comment]

    object = record.is_a?(Array) ? record.last : record
    raise ArgumentError, "First argument in form cannot contain nil or be empty" unless object
  }

  x.report("PR: array.length == 3") {
    record = [:admin, :document, :comment]

    record_is_array = record.is_a?(Array)
    object = record_is_array ? record.last : record

    if record_is_array && record.any?(&:nil?) || object.nil?
      raise ArgumentError, "First argument in form cannot contain nil or be empty"
    end
  }
  x.compare!
end

Benchmark.ips do |x|
  x.report("Master: array.length == 4") {
    record = [:admin, :document, :comment, :edit]

    object = record.is_a?(Array) ? record.last : record
    raise ArgumentError, "First argument in form cannot contain nil or be empty" unless object
  }

  x.report("PR: array.length == 4") {
    record = [:admin, :document, :comment, :edit]

    record_is_array = record.is_a?(Array)
    object = record_is_array ? record.last : record

    if record_is_array && record.any?(&:nil?) || object.nil?
      raise ArgumentError, "First argument in form cannot contain nil or be empty"
    end
  }
  x.compare!
end

Benchmark.ips do |x|
  x.report("Master: array.length == 5") {
    record = [:admin, :document, :comment, :commentable, :edit]

    object = record.is_a?(Array) ? record.last : record
    raise ArgumentError, "First argument in form cannot contain nil or be empty" unless object
  }

  x.report("PR: array.length == 5") {
    record = [:admin, :document, :comment, :commentable, :edit]

    record_is_array = record.is_a?(Array)
    object = record_is_array ? record.last : record

    if record_is_array && record.any?(&:nil?) || object.nil?
      raise ArgumentError, "First argument in form cannot contain nil or be empty"
    end
  }
  x.compare!
end
