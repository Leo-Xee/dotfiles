# dotfiles

Linux와 MacOS 전용 dotfiles를 [chezmoi](https://www.chezmoi.io/)로 관리합니다.

## 설치

```sh
$ brew install chezmoi
```

## 실행

```sh
# 로컬 저장소로 가져오기
$ chezmoi init git@github.com:Leo-Xee/dotfiles.git

# 변경 확인
$ chezmoi diff

# 반영
$ chezmoi apply -v

# 위 절차를 한번에 실행
$ chezmoi init --apply Leo-Xee
```

## 업데이트

### Common

```sh
$ chezmoi edit <target>  # ~/.gitconfig
```

### Homebrew

```sh
$ brew bundle dump --describe --force --no-vscode --file $HOME/.local/share/chezmoi/Brewfile
```

### Iterm

- Iterm의 settings > load settings 기능 사용
  - `$HOME/.local/share/chezmoi/iterm2`

### Raycast

- Raycast의 import/export 기능 사용
  - `$HOME/Raycast.rayconfig`

## TODO

- [ ] Bootstrap 구성
- [ ] 동기화 플로우 개선(심볼릭 링크)
- [ ] macOS 세팅 관리 추가
- [ ] vscode, cursor 세팅 관리 추가
- [ ] .ssh 관리 추가(age)
