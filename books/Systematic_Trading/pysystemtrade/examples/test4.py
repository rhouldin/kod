import sys; sys.path.append('..')

from systems.provided.futures_chapter15.basesystem import futures_system
system=futures_system()
system.accounts.portfolio().stats() ## see some statistics
print (system.accounts.portfolio().stats()) ## see some statistics
system.rules.get_raw_forecast("CORN", "carry").to_csv("out-carry-corn.csv")
print (system.accounts.pandl_for_instrument_forecast("CORN", "carry").sharpe())
system.forecastScaleCap.get_capped_forecast("CORN", "carry").to_csv("out-capped-carry-corn.csv")
