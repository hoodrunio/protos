buf export buf.build/cosmwasm/wasmd --output .

mkdir temp
cd temp

git clone https://github.com/axelarnetwork/axelar-core
cp -r axelar-core/proto/* ../

git clone https://github.com/babylonchain/babylon
cp -r babylon/proto/* ../

cd ..
rm -rf temp

buf export buf.build/cosmos/cosmos-sdk --output .
buf export buf.build/cosmos/ibc --output .
