@echo off

REM Create a virtual environment named hfdiffusion
"C:\Users\sasa5\AppData\Local\Programs\Python\Python311\python.exe" -m venv hfdiffusion

REM Activate the hfdiffusion environment
call hfdiffusion\Scripts\activate

REM Install PyTorch, torchvision, torchaudio, and a specific version of CUDA
pip install torch torchvision torchaudio torch-cuda==12.1 -f https://download.pytorch.org/whl/torch_stable.html

REM Install Hugging Face libraries from GitHub
pip install git+https://github.com/huggingface/transformers.git
pip install git+https://github.com/huggingface/accelerate.git
pip install git+https://github.com/huggingface/diffusers.git
pip install git+https://github.com/huggingface/huggingface_hub.git

REM Install Jupyter Notebook and JupyterLab
pip install jupyterlab jupyter

REM Install Matplotlib
pip install matplotlib

REM The .bat file ends here. To run this file, save it as setup.bat and execute it.

