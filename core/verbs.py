from stream_framework.verbs import register
from stream_framework.verbs.base import Verb


class Pin(Verb):
    id = 5
    infinitive = 'pin'
    past_tense = 'pinned'

register(Pin)
