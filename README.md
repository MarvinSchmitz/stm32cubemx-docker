# stm32cubemx-docker

This project aims to run STM32CubeMX inside of a Docker container. Since STM32CubeMX is neither available over a classic package manager nor is there an option to install it without an interactive shell, the approach used in this project still relies a lot on the official STM download files.

## Workaround
To install STM32CubeMX you can utilize a previous, successful installation. The installation assistant you can start from the downloaded archive file from STM has an option to generate a script for further installations with the same settings. This is where the file *auto-install.xml* comes from. After generating this file you can feed it into the build of a new docker container along with the installer archives from STM to install STM32CubeMX without an interactive shell.

## Usage 

 1. Download the STM32CubeMX archive for Linux with the version label v6.2.0 from [here](https://www.st.com/en/development-tools/stm32cubemx.html) (You will need to register to get access to the downloads).
 2. Rename the archive to *en.stm32cubemx.zip*
 3. Clone this repository and copy the renamed archive into the repositories root folder.
 4. Run `docker build -t cubemx .` inside the project root folder.
 5. After the build succeeds execute `./run.sh` 

