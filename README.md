## EMLO4 session-05 Assignment - Pytorch Lightning - II (created from scratch)

### Contents
- [Requirements]
- [Step-by-step-Approach-in-Development]
- [Observation]
- [Results]

### Mandatory Requirements
- Start from the repository of previous Session
- Start using Cursor!
- Create a eval.py with its config that tests the model given a checkpoint
- Integrate the infer.py you made in last session with hydra
- Make sure to integrate codecov in your repo, should be atleast 70%
- Push the Docker Image to GHCR, should show up in Packages section of your repo

### Optional Requirements (Bonus Points - 500)**
- Create another GitHub Actions Workflow to use the Docker image created to train the cat-dog model for 5 epochs on a small backbone network
- Your actions should fail if accuracy is <95%
- Model Checkpoint, Model Logs, Config used, should be presented as artifacts

### Step-by-step Approach in Development

Creation of the Docker file based on the layering as given below:
1) The first should be the linux image (particular version)
2) Second should be the UV libraries (particular version)
3) Third should be the Python libraries (particular version)
4) Fourth should be Torch libraries like Pytorch, torch vision, Pytorch lightning
5) Fifth should be the configurations and mandatory dependency libraries like (particular version)
    Hydra
    Black
    loguru
    Rich
    tensorboard  
    coverage
    Pytest
    Torch metrics
    Fine tuning
    Profiler
    Netron
    TQDM

6) Sixth should be configurations Project dependencies like timm, or gdown etc.
7) Seventh should be 


    





### Results


