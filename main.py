import os
import sys
import yaml


def load(path):
    with open(path, 'r') as f:
        config = yaml.safe_load(f)
    return config

def backup(config, *apps):
    for app in apps:
        data = config.get(app)
        if data and data.get('files'):
            for f1, f2 in list(data.get('files').items()):
                f1 = os.path.expanduser(f1)
                f2 = os.path.expanduser(f2)
                # print(f'{f1} {f2}')
                if os.path.exists(f1):
                    if os.path.isfile(f2):
                        f2 = f2 + '~'
                    os.system(f'echo "{f1}" "{f2}"')
                    if not os.path.exists(os.path.dirname(f2)):
                        # os.system(f'mkdir -p {os.path.dirname(f2)}')
                        pass
                    # os.system(f'gcp -v "{f1}" "{f2}"')

def restore(config, *apps):
    for app in apps:
        data = config.get(app)
        if data and data.get('files'):
            for f1, f2 in list(data.get('files').items()):
                f1 = os.path.expanduser(f1)
                f2 = os.path.expanduser(f2)
                # print(f'{f1} {f2}')
                if f1.endswith('/.'):
                    f1 = os.path.dirname(f1)
                    f2 = os.path.join(f2, '.')
                os.system(f'echo "{f2}" "{f1}"')
                if not os.path.exists(os.path.dirname(f1)):
                    # os.system(f'mkdir -p {os.path.dirname(f1)}')
                    pass
                # os.system(f'gcp -v "{f2}" "{f1}"')


def main():
    config = load('config.yaml')
    apps = sys.argv[2:] or config.keys()
    print(apps)
    globals()[str(sys.argv[1])](config, *apps)

if __name__ == "__main__":
    main()
    pass
