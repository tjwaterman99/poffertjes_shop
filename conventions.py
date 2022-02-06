"""
A conventions.py file for validating the dbt project adheres to the conventions
defined below.

The conventions can be checked with pytest.

    $ pytest conventions.py
    
The conventions are also checked automatically on every PR by the `conventions.yml`
workflow. 
"""

def test_sources_have_snapshots(source):
    assert len(source.snapshots) == 1


def test_base_models_map_to_sources_or_seeds(model):
    if model.name.startswith('base_'):
        assert len(model.parents) == 1
        assert model.parents[0].resource_type in ('seed', 'source')
        

def test_base_models_are_in_base_directory(model):
    if model.name.startswith('base_'):
        assert model.path.startswith('base'), f"Invalid directory {model.path} for base model {model.name}"


def test_sources_have_exactly_one_base_model(source):
    child_models = [c.node for c in source.children if c.resource_type == 'model']
    assert len(child_models) == 1
    assert child_models[0].name.startswith('base')


def test_selectors_have_descriptions(selector):
    assert selector.get('description') is not None


def test_macros_have_descriptions(macro):
    assert macro.description is not None
