# neovim
neovim setting

```bash
cd ~ &&\
sudo apt-get install -y neovim &&\
mkdir -p ~/.config/nvim &&\
git clone https://github.com/PoKeumCho/neovim.git &&\
mv neovim/init.vim ~/.config/nvim &&\
rm -rf neovim &&\
mkdir -p ~/.config/nvim/autoload &&\
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o ~/.config/nvim/autoload/plug.vim
```

위 코드 실행 후 PlugInstall 실행
<br/><br/>

### <b>[coc.nvim] "node" is not executable, checkout https://nodejs.org/en/download/ [해결방법]</b>   
- - - 
* **Installing Node.js with nvm**      
1. Find lastest releases here --> https://github.com/nvm-sh/nvm  
   
2. Install nvm via terminal   
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
3. Install node.js via terminal  
```bash
nvm install 16
```
- - - 
```bash
wget https://nodejs.org/dist/v16.13.0/node-v16.13.0-linux-x64.tar.xz
sudo apt-get install xz-utils
sudo tar -C /usr/local --strip-components 1 -xJf node-v16.13.0-linux-x64.tar.xz
```
- - - 
<br/>

- <b>Language-servers (https://github.com/neoclide/coc.nvim/wiki/Language-servers)</b>
```bash
apt-get install clang-tools
```

```bash
:CocInstall coc-clangd coc-html coc-tsserver coc-json coc-phpls coc-pyright coc-java
```
<br/>

- <b>ESLint (https://github.com/neoclide/coc-eslint)</b>
```bash
:CocInstall coc-eslint
```
```bash
:CocCommand eslint.showOutputChannel
```
<br/>

- <b>Prettier (https://github.com/neoclide/coc-prettier)</b>
```bash
:CocInstall coc-prettier
```
Prettier 설정 변경
```bash
nvim ~/.config/coc/extensions/node_modules/coc-prettier/package.json
```
```json
"prettier.tabWidth": {                                                                                            
  "type": "integer",                                                                                              
  "default": 4,                                                                                                   
  "description": "Number of spaces it should use per tab",                                                        
  "scope": "resource"                                                                                             
},                                                                                                                
  "prettier.singleQuote": {                                                                                         
  "type": "boolean",                                                                                              
  "default": true,                                                                                                
  "description": "If true, will use single instead of double quotes",                                             
  "scope": "resource"                                                                                             
},   
```
