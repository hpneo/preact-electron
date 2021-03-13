import { h, render } from 'preact';

const Hello = props => (
  <div>Hello {props.name}!</div>
)

document.addEventListener('DOMContentLoaded', () => {
  render(
    <Hello name="Preact" />,
    document.body.appendChild(document.createElement('div')),
  )
});
