import nltk
import os

# Set the path to the folder where you want to store the NLTK data
nltk_data_path = os.path.join(os.path.dirname(__file__), 'nltk_data')

# Create the folder if it doesn't exist
os.makedirs(nltk_data_path, exist_ok=True)

# Set the NLTK data path to the custom folder
nltk.data.path.append(nltk_data_path)

# Check if stopwords are downloaded
try:
    nltk.data.find('corpora/stopwords.zip')
except LookupError:
    # Download stopwords if not found
    nltk.download('stopwords', download_dir=nltk_data_path)

# Check if punkt is downloaded
try:
    nltk.data.find('tokenizers/punkt')
except LookupError:
    # Download punkt if not found
    nltk.download('punkt', download_dir=nltk_data_path)
