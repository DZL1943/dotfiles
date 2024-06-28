---
created: "2023-06-08 18:11"
modified: "2024-06-27 02:46"
aliases: [Anaconda, Miniconda, Conda]
---

## 安装

- https://www.anaconda.com/download
- https://docs.conda.io/en/latest/miniconda.html
- [在 macOS 上安装 — conda 0.0.0.dev0+占位符文档](https://conda.io/projects/conda/en/stable/user-guide/install/macos.html)

```shell
export ANACONDA_HOME=~/opt/miniconda3
sh Miniconda3-*.sh -fbp $ANACONDA_HOME
source $ANACONDA_HOME/bin/activate
conda init zsh
conda activate
conda update --all
conda config --set auto_activate_base false
conda create -n jupyter jupyterlab
conda create -n py3 python=3 pip
```

## 配置

```yaml
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch-lts: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
```

### 补全

```shell
# 1 下载
git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion

# 2 .zshrc 配置
plugins=(git conda-zsh-completion)
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

source ~/.zshrc
```