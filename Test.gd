class_name Test extends Node

func _fib(n: int) -> int:
  if n <= 1:
    return n
  return _fib(n - 1) + _fib(n - 2)

func concat_strings(str: String):
  return "1: " + str

func percent_format_new_string(str: String):
  return "1: %s" % [str]

func curly_format_new_string(str: String):
  return "1: {0}".format([str])

func curly_format_new_string_no_index(str: String):
  return "1: {}".format([str], "{}")

func percent_format_both_strings(str: String):
  return "%s%s" % ["1: ", str]

func curly_format_both_strings(str: String):
  return "{0}{1}".format(["1: ", str])

func curly_format_both_strings_no_index(str: String):
  return "{}{}".format(["1: ", str], "{}")

func random_string() -> String:
  var chars := PackedByteArray()
  for i in range(randi_range(5,10)):
    chars.append(randi_range(0x20, 0x7F))
  return chars.get_string_from_ascii()

func range_loop():
  for i in range(5000):
    pass

func int_loop():
  for i in 5000:
    pass
