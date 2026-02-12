# dotfiles

macOS 전용 dotfiles를 [chezmoi](https://www.chezmoi.io/)로 관리합니다.

## 설치

```sh
brew install chezmoi
```

## 가져오기

### 초기 설정

```sh
chezmoi init --apply Leo-Xee
```

### 기존 설정 업데이트

```sh
# 원격 저장소의 변경사항 가져오기
chezmoi update
```

## 반영하기

### 추적 대상

chezmoi가 추적하는 파일은 아래 명령어로 반영합니다.

```sh
# 로컬 변경사항을 chezmoi 저장소에 반영
chezmoi add <target>

# 예시
chezmoi add ~/.gitconfig
chezmoi add ~/.zshrc
```

### 수동 추출 대상

별도 추출이 필요한 항목입니다.

**Homebrew**

```sh
brew bundle dump --describe --force --no-vscode --file $HOME/.local/share/chezmoi/Brewfile
```

**Raycast**

- Raycast의 import/export 기능으로 `Raycast.rayconfig` 파일을 추출하여 저장소에 복사

## 관리 목록

| 도구                                                          | 설정 파일               |
| ------------------------------------------------------------- | ----------------------- |
| [Zsh](https://www.zsh.org/)                                   | `.zshrc`, `.zprofile`   |
| [Oh My Zsh](https://ohmyz.sh/)                                | `.oh-my-zsh/`           |
| [Starship](https://starship.rs/)                              | `.config/starship.toml` |
| [Git](https://git-scm.com/)                                   | `.gitconfig`            |
| [Neovim](https://neovim.io/)                                  | `.config/nvim/`         |
| [Ghostty](https://ghostty.org/)                               | `.config/ghostty/`      |
| [AeroSpace](https://github.com/nikitabobko/AeroSpace)         | `.aerospace.toml`       |
| [Karabiner-Elements](https://karabiner-elements.pqrs.org/)    | `.config/karabiner/`    |
| [Claude Code](https://docs.anthropic.com/en/docs/claude-code) | `.claude/`              |
| [Homebrew](https://brew.sh/)                                  | `Brewfile`              |
| [Raycast](https://www.raycast.com/)                           | `Raycast.rayconfig`     |
