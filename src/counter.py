"""This module is a simple test that returns a list of numbers."""


def counter(num: int) -> int:
    """Count in ones from num a to num b."""
    list_counter = []
    for i in range(1, num + 1):
        list_counter.append(i)
    return list_counter
