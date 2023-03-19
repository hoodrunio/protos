buf export buf.build/evmos/evmos --output .
buf export buf.build/osmosis-labs/osmosis --output .

mkdir temp
cd temp
git clone https://github.com/umee-network/umee
buf export umee/proto --output ../

git clone https://github.com/Gravity-Bridge/Gravity-Bridge
buf export Gravity-Bridge/module/proto --output ../

cd ..
rm -rf temp

buf export buf.build/cosmos/cosmos-sdk --output .
buf export buf.build/cosmos/ibc --output .
