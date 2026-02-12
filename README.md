# dotfiles

macOS 전용 dotfiles를 [chezmoi](https://www.chezmoi.io/)로 관리합니다.

## 새 기기에서 세팅

```sh
# chezmoi 설치 및 dotfiles 적용 (원라이너)
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Leo-Xee
```

아래 스크립트가 자동으로 순서대로 실행됩니다.

| 순서 | 스크립트                 | 설명                          |
| ---- | ------------------------ | ----------------------------- |
| 순서 | 스크립트                 | 설명                          |
| 1    | `10-install-xcode-tools` | Xcode Command Line Tools 설치 |
| 2    | `20-install-homebrew`    | Homebrew 설치                 |
| 3    | `30-install-packages`    | Brewfile로 패키지 일괄 설치   |
| 4    | `40-install-oh-my-zsh`   | Oh My Zsh 설치                |
| 5    | `50-install-nvm`         | NVM 설치                      |

## 기존 설정 업데이트

```sh
# 1. 원격 저장소의 변경사항을 로컬 chezmoi 저장소로 가져오기
chezmoi git pull

# 2. 로컬 chezmoi 저장소와 홈 디렉토리 간의 차이 미리보기
chezmoi diff

# 3. 로컬 chezmoi 저장소의 설정을 홈 디렉토리에 적용
chezmoi apply

# 또는 1~3을 한 번에 실행
chezmoi update
```

## 반영하기

### 추적 대상

chezmoi가 추적하는 파일은 아래 명령어로 반영합니다.

```sh
# 1. 홈 디렉토리의 변경된 파일을 로컬 chezmoi 저장소에 반영
chezmoi add ~/<target>

# 2. 반영된 내용 확인
chezmoi diff

# 3. 로컬 chezmoi 저장소의 변경사항을 원격 저장소에 푸시
chezmoi git add .
chezmoi git commit -- -m "update dotfiles"
chezmoi git push
```

### 수동 추출 대상

별도 추출이 필요한 항목입니다.

**Homebrew**

```sh
brew bundle dump --force --file $HOME/.local/share/chezmoi/Brewfile
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
