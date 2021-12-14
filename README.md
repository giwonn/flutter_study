# 플러터 개발환경 설정 방법 (MacOS 기준)

vscode를 사용한다는 가정 하에 개발환경 설정을 진행합니다.

## 설치할 프로그램

### [VScode](https://code.visualstudio.com/)

### [Android Studio](https://developer.android.com/studio?hl=ko)

extensions에서 flutter 검색 후 설치
<br>

### [Xcode (iOS 에뮬레이터 실행기)](https://developer.apple.com/xcode/)

설치 후 아래 명령어를 실행해준다.

```bash
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license
sudo gem install cocoapods
```

<br>

## Flutter SDK 설치

Flutter 설치를 위해 SDK를 설치해주어야 한다.  
설치 위치 및 폴더명은 임의로 지정하여도 상관없다.  
그냥 `~/dev`에 flutter sdk를 설치하였다.

```bash
mkdir ~/dev
cd ~/dev
git clone https://github.com/flutter/flutter.git -b stable
```

### 경로 설정

`macOS Catalina`부터 환경변수 설정이 `.bashrc`에서 `.zshrc`로 바뀌었다.  
다음 명령어로 파일을 수정하자.

```bash
vi ~/.zshrc
```

파일 내부로 진입하면 다음 내용을 추가한다.  
`$HOME/dev` 부분은 설치 경로이다. 다른 경로에 설치했다면 저 부분을 바꿔주면 된다.

```bash
export PATH=$HOME/dev/flutter/bin:$PATH
```

<br>

## flutter doctor

`iTerm`에서 해당 명령어를 입력해보자.

```bash
flutter doctor
```

그러면 아래와 같은 메세지가 뜰 텐데, 체크가 되지 않고 에러가 뜨는 부분을 구글링하여 해결하면 된다.

```bash
[✓] Flutter (Channel stable, 2.8.0, on macOS 12.0.1 21A559 darwin-arm, locale ko-KR)
[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 13.1)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2020.3)
[✓] VS Code (version 1.62.3)
[✓] Connected device (2 available)
```

### Android toolchain

아마 `Android toolchain` 이슈는 웬만해선 발생할 것이다.  
아래 명령어를 입력하여 해결하자.

```bash
flutter doctor --android-licenses
```

<br>

## 프로젝트 생성

프로젝트 폴더를 생성할 경로로 이동해서 아래 명령어를 실행하자.

```bash
flutter create <프로젝트명>
```

### cli 로 앱 실행한다면?

해당 프로젝트로 이동 후 `flutter run`으로 실행시켜준다.

```bash
cd <프로젝트명>
flutter run
```

iOS 시뮬레이터가 실행되지 않는다면 아래 명령어로 실행시킨다.

```bash
open -a Simulator
```

아마 터미널에 단축키가 뜰 텐데 `r`을 눌러 핫리로드를 할 수 있다.

### vscode로 앱 실행하기

해당 프로젝트를 열고 나서 오른쪽 아래에 에뮬레이터를 지정해주고,  
`F5`를 클릭하여 디버깅모드로 진입하면 된다.  
(이 경우 save만 해도 자동으로 핫리로드가 된다.)
