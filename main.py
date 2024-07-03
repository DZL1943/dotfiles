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
        if not data:
            continue
        paths = data.get('paths')
        if not paths:
            continue
        pairs = list(paths.items())
        for p1, p2 in pairs:
            p1 = os.path.expanduser(p1)
            p2 = os.path.expanduser(p2)
            # print(f'{p1} {p2}')
            if not os.path.exists(p1):
                continue
            if os.path.exists(p2):
                # if os.system(f'diff "{p1}" "{p2}" > /dev/null 2>&1') == 0:
                #     continue
                pass
            elif p2.endswith(('/', '/.', '/..')):
                # os.system(f'mkdir -p "{p2}"')
                pass
            else:
                # os.system(f'mkdir -p "{os.path.dirname(p2)}"')
                pass
            if os.path.isfile(p2):
                    # just bak and will not overwrite existed paths.
                    p2 = p2 + '~'
            os.system(f'echo gcp -ruv "{p1}" "{p2}"')

def restore(config, *apps):
    for app in apps:
        data = config.get(app)
        if not data:
            continue
        paths = data.get('paths')
        if not paths:
            continue
        pairs = list(paths.items())
        for p1, p2 in pairs:
            p1 = os.path.expanduser(p1)
            p2 = os.path.expanduser(p2)
            # print(f'{p1} {p2}')
            if not os.path.exists(p2):
                continue
            if os.path.exists(p1):
                # if os.system(f'diff "{p1}" "{p2}" > /dev/null 2>&1') == 0:
                #     continue
                pass
            elif p1.endswith(('/', '/.', '/..')):
                # os.system(f'mkdir -p "{p1}"')
                pass
            else:
                # os.system(f'mkdir -p "{os.path.dirname(p1)}"')
                pass
            if p1.endswith('/.'):
                p1 = os.path.dirname(p1)
                p2 = os.path.join(p2, '.')
            elif p2.endswith('/..'):
                p2 = os.path.dirname(p2)
                p1 = os.path.join(p1, '..')
            os.system(f'echo gcp -ruv --backup=t "{p2}" "{p1}"')


def main():
    config = load('config.yaml')
    apps = sys.argv[2:] or config.keys()
    print(apps)
    globals()[str(sys.argv[1])](config, *apps)

if __name__ == "__main__":
    main()
    pass
