import tests.append_src_to_path
import unittest
from src.blob import blob


class TestBlob(unittest.TestCase):
    def test_blob_retuns_blobs(self):
        self.assertTrue("blob" in blob("Yay!"))


if __name__ == "__main__":
    unittest.main()
