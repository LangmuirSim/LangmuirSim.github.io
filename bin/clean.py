import shutil
import os

work = os.getcwd()

exclude_d = [
    './.git',
    './bin',
    './doc',
    '.',
]
exclude_d = list(map(lambda x: os.path.abspath(x), exclude_d))

exclude_f = [
    './.gitignore',
    './.nojekyll',
    './index.html',
    './README.md',
]
exclude_f = list(map(lambda x: os.path.abspath(x), exclude_f))

found_d = []
found_f = []

root, found_d, found_f = next(os.walk(work))
found_d = map(lambda x: os.path.join(work, x), found_d)
found_f = map(lambda x: os.path.join(work, x), found_f)

found_d = [d for d in found_d if not d in exclude_d]
found_f = [f for f in found_f if not f in exclude_f]

for d in found_d:
    print('rm -rf %s' % d)
    shutil.rmtree(d)

for f in found_f:
    print('rm -f %s' % f)
    os.remove(f)

