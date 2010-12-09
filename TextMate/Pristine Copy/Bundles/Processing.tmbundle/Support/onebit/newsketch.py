import sys
import onebit
import os

template = onebit.env.get_template("newsketch.html")

print template.render(
    homedir=os.environ['HOME']+'/Documents/Processing',
)

