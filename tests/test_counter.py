import tests.append_src_to_path
import unittest
from src.counter import counter


class TestCounter(unittest.TestCase):
    def test_counter_counts_to_10(self):
        expected_result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        actual_result = counter(10)
        self.assertEqual(expected_result, actual_result)

    def test_counter_counts_to_100(self):
        expected_result = list(range(1, 101))
        actual_result = counter(100)
        self.assertEqual(expected_result, actual_result)


if __name__ == "__main__":
    unittest.main()
