import os
from dotenv import load_dotenv
import openai

class projAI:
    def __init__(self):
        self.api_key = os.getenv('OPENAI_KEY')
        os.environ['OPENAI_API_KEY'] = self.api_key
        self.client = openai.OpenAI()