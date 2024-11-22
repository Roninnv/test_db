/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,js,ts,vue,css}"],
  theme: {
    extend: {},
  },
  plugins: [
    require('daisyui'),
  ],
}

