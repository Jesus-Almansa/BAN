# #!/bin/bash

# # Create Conda environment with Python 3.8
# echo "Creating Conda environment..."
# conda create -n EntornoBAN python=3.8 -y

# # Activate Conda environment
# echo "Activating Conda environment..."
# conda activate EntornoBAN

# # Install torch, torchvision, and torchaudio using pip
# echo "Installing PyTorch packages using pip..."
# pip install torch==2.0.0 torchvision==0.15.1 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118

# # Install OpenMMLab Toolkits using pip
# echo "Installing OpenMMLab Toolkits using pip..."
# pip install -U openmim
# mim install mmengine
# mim install "mmcv>=2.0.0"
# mim install "mmpretrain>=1.0.0rc7"
# pip install "mmsegmentation>=1.0.0"
# pip install "mmdet>=3.0.0"

# # Install additional packages using Conda
# echo "Installing additional packages using Conda..."
# conda install -n EntornoBAN ftfy regex -y

# # Install OpenCD from GitHub repository
# echo "Installing OpenCD from GitHub repository..."
# git clone https://github.com/likyoo/open-cd.git
# cd ./open-cd
# pip install -v -e .
# cd ..

# pip install opencv-python-headless

# # Para poder ejecutarlo hay que entrar en el entorno de conda preconfigurado
# # Un código de ejemplo sería el siguiente, corriendo la primera iteración del modelo, b0:
# # python test.py configs/ban/ban_vit-l14-clip_mit-b0_512x512_40k_levircd.py checkpoint/ban_vit-l14-clip_mit-b0_512x512_40k_levircd.pth

#!/bin/bash

# Create Conda environment with Python 3.8
echo "Creating Conda environment..."
conda create -n EntornoBAN python=3.8 -y

# Activate Conda environment
echo "Activating Conda environment..."
conda activate EntornoBAN

# Install torch, torchvision, and torchaudio using pip
echo "Installing PyTorch packages using pip..."
conda run -n EntornoBAN pip install torch==2.0.0 torchvision==0.15.1 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118

# Install OpenMMLab Toolkits using pip
echo "Installing OpenMMLab Toolkits using pip..."
conda run -n EntornoBAN pip install -U openmim
conda run -n EntornoBAN mim install mmengine
conda run -n EntornoBAN mim install "mmcv>=2.0.0"
conda run -n EntornoBAN mim install "mmpretrain>=1.0.0rc7"
conda run -n EntornoBAN pip install "mmsegmentation>=1.0.0"
conda run -n EntornoBAN pip install "mmdet>=3.0.0"

# Install additional packages using Conda
echo "Installing additional packages using Conda..."
conda run -n EntornoBAN conda install ftfy regex -y

# Install OpenCD from GitHub repository
echo "Installing OpenCD from GitHub repository..."
git clone https://github.com/likyoo/open-cd.git
cd ./open-cd
conda run -n EntornoBAN pip install -v -e .
cd ..

conda run -n EntornoBAN pip install opencv-python-headless

# Para poder ejecutarlo hay que entrar en el entorno de conda preconfigurado
# Un código de ejemplo sería el siguiente, corriendo la primera iteración del modelo, b0:
# python test.py configs/ban/ban_vit-l14-clip_mit-b0_512x512_40k_levircd.py checkpoint/ban_vit-l14-clip_mit-b0_512x512_40k_levircd.pth

# Para borrar el entorno de conda por si algo sale mal usaremos el siguiente comando:
# conda env remove -n EntornoBAN