flake8 || exit 1
./node_modules/.bin/eslint '**/*.js' || exit 1
./node_modules/.bin/stylelint '**/*.{css,scss}' || exit 1
./node_modules/.bin/prettier --check '**/*.{css,scss,js,vue,json,md}' || exit 1
