# lager_loc

Demonstrate the problem with lager's 'line' metadata in OTP-24.0.

```
source ~/.kerl/erlangs/OTP-23.3.2/activate   # or wherever
rebar3 clean && rebar3 compile && ERL_LIBS=_build/default/lib erl -s lager_loc -config config/sys.config

source ~/.kerl/erlangs/OTP-24.0.2/activate   # or wherever
rebar3 clean && rebar3 compile && ERL_LIBS=_build/default/lib erl -s lager_loc -config config/sys.config
```
