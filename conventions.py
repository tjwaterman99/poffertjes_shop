

def test_selectors_have_descriptions(selector):
    assert selector.get('description') is not None
