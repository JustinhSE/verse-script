# verse-script

This repository includes a terminal script (`prov16_33.sh`) that prints a verse and a dice-roll animation.

## Add it to terminal startup

1. Choose where this repo lives (example: `~/verse-script`) and make the script executable:

```bash
chmod +x ~/verse-script/prov16_33.sh
```

2. Add the script to your shell startup file.

### Bash (`~/.bashrc`)

```bash
if [ -x "$HOME/verse-script/prov16_33.sh" ]; then
  "$HOME/verse-script/prov16_33.sh"
fi
```

### Zsh (`~/.zshrc`)

```bash
if [ -x "$HOME/verse-script/prov16_33.sh" ]; then
  "$HOME/verse-script/prov16_33.sh"
fi
```

3. Reload your shell config:

```bash
source ~/.bashrc
```

or:

```bash
source ~/.zshrc
```

Now the verse script will run each time a new terminal session starts.
