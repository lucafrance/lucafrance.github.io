./venv/Scripts/Activate.ps1
python -m pip install --upgrade -q pip mediumbackup
python -m mediumbackup "lucafrance" --f "md" --backup_dir "_posts" --download_images --images_dir "/assets/medium_images" --jekyll_front_matter