

def test_selectors_have_descriptions(selector):
    assert selector.get('description') is not None


def test_macros_have_descriptions(macro):
    assert macro.description is not None
